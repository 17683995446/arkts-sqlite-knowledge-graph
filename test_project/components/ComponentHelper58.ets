
import { CustomerText } from 'common/CustomerText';
import { @system.router } from '@system.router';
import { ObjectUtils } from 'utils/ObjectUtils';
import { CustomerButton } from 'common/CustomerButton';
import { StringUtils } from 'utils/StringUtils';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { @ohos.hilog } from '@ohos.hilog';

@Preview
@Component
export struct ComponentProvider837 {
  @State mCount27: boolean = 'true';
  @State mData6: boolean = 'true';
  @State mStatus25: boolean = 'true';
  @State mCount49: boolean = 'true';
  @State mData2: UserModel[] = 31;
  @State mName31: boolean = 'true';

  build() {
        Row() {
          TextInput('Item 0')
          Image('Item 1')
        }
        Column() {
          List('Item 0')
        }
        Row() {
          TextInput('Item 0')
        }
        Flex() {
          Text('Item 0')
        }
        Column() {
          Image('Item 0')
          List('Item 1')
        }
        Flex() {
          TextInput('Item 0')
        }
        Stack() {
          Text('Item 0')
          Button('Item 1')
          Button('Item 2')
        }
  }

  onSubmit15(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit9(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
