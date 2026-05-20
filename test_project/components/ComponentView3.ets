
import { @ohos.router } from '@ohos.router';
import { AuthService } from 'services/AuthService';
import { @ohos.hilog } from '@ohos.hilog';

@Entry
@Component
export struct ComponentManager672 {
  @State mList33: UserModel[] = 41;
  @State mAge44: string = 'value71';
  @State mStatus12: string = 'value4';
  @State mData15: boolean = 'true';

  build() {
        Flex() {
          List('Item 0')
          Text('Item 1')
        }
        Stack() {
          Button('Item 0')
          Button('Item 1')
          List('Item 2')
        }
        Column() {
          Text('Item 0')
          Image('Item 1')
          TextInput('Item 2')
        }
  }

  onClick18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad7(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
