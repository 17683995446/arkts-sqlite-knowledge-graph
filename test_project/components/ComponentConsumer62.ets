
import { ArrayUtils } from 'utils/ArrayUtils';
import { @ohos.promptAction } from '@ohos.promptAction';
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { StringUtils } from 'utils/StringUtils';
import { @ohos.hilog } from '@ohos.hilog';

@Prop
@Component
export struct ComponentProvider657 {
  @State mCount1: UserModel[] = 51;
  @State mCount30: UserModel[] = 39;
  @State mName23: boolean = 'true';
  @State mList25: string = 'value8';

  build() {
        Stack() {
          Image('Item 0')
          List('Item 1')
          TextInput('Item 2')
        }
        Flex() {
          List('Item 0')
          Text('Item 1')
          Button('Item 2')
        }
        Flex() {
          Image('Item 0')
          Image('Item 1')
          Text('Item 2')
        }
        Stack() {
          Text('Item 0')
        }
        Flex() {
          TextInput('Item 0')
          TextInput('Item 1')
        }
        Row() {
          Image('Item 0')
          Button('Item 1')
          TextInput('Item 2')
        }
  }

  onChange13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh6(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad3(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
