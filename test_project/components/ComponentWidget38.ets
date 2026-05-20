
import { @ohos.hilog } from '@ohos.hilog';
import { Logger } from 'utils/Logger';
import { StringUtils } from 'utils/StringUtils';
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';

@Prop
@Component
export struct ComponentController831 {
  @State mStatus19: UserModel[] = 49;
  @State mCount42: number = 90;
  @State mAge44: UserModel[] = 93;

  build() {
        Stack() {
          List('Item 0')
          Text('Item 1')
          Button('Item 2')
        }
        Flex() {
          Text('Item 0')
          Image('Item 1')
        }
        Flex() {
          TextInput('Item 0')
        }
        Flex() {
          TextInput('Item 0')
          List('Item 1')
          TextInput('Item 2')
        }
        Column() {
          Image('Item 0')
        }
        Stack() {
          TextInput('Item 0')
          Image('Item 1')
          Text('Item 2')
        }
        Flex() {
          Image('Item 0')
          Text('Item 1')
          Image('Item 2')
        }
        Stack() {
          List('Item 0')
        }
        Column() {
          List('Item 0')
          Image('Item 1')
        }
        Row() {
          Button('Item 0')
        }
  }

  onInit5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick14(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick2(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
