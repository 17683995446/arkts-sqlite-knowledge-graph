import os
from openai import OpenAI
from dotenv import load_dotenv
from database import CodeGraphDatabase

load_dotenv()

class CodeQueryEngine:
    def __init__(self, db_path: str = "code.db"):
        self.db = CodeGraphDatabase(db_path)
        api_key = os.getenv("SILICONFLOW_API_KEY")
        self.client = OpenAI(
            api_key=api_key,
            base_url="https://api.siliconflow.cn/v1"
        )

    def ask(self, question: str) -> str:
        graph_data = self.db.get_all_data_for_llm()
        
        prompt = f"""你是一个代码分析助手。以下是项目的代码知识图谱数据：

{graph_data}

请根据以上信息回答用户的问题：
{question}
"""

        try:
            response = self.client.chat.completions.create(
                model="Qwen/Qwen2.5-7B-Instruct",
                messages=[
                    {"role": "system", "content": "你是一个专业的代码分析助手，能够根据代码知识图谱回答问题。"},
                    {"role": "user", "content": prompt}
                ],
                temperature=0.7,
                max_tokens=2000
            )
            return response.choices[0].message.content
        except Exception as e:
            return f"查询失败: {str(e)}"

    def close(self):
        self.db.close()
