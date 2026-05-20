
import { CustomerButton } from 'common/CustomerButton';
import { ObjectUtils } from 'utils/ObjectUtils';
import { @ohos.hilog } from '@ohos.hilog';
import { DataService } from 'services/DataService';
import { Logger } from 'utils/Logger';

@State
@Component
export struct ComponentConsumer701 {
  @State mList9: UserModel[] = 26;
  @State mCount24: boolean = 'true';
  @State mData11: UserModel[] = 34;
  @State mStatus25: boolean = 'true';
  @State mList12: number = 74;

  build() {
        Row() {
          List('Item 0')
        }
        Row() {
          TextInput('Item 0')
          Text('Item 1')
        }
        Flex() {
          List('Item 0')
        }
        Stack() {
          Image('Item 0')
          Text('Item 1')
          Button('Item 2')
        }
        Flex() {
          Image('Item 0')
          Image('Item 1')
        }
        Flex() {
          Text('Item 0')
          List('Item 1')
        }
        Flex() {
          TextInput('Item 0')
          Image('Item 1')
        }
        Stack() {
          Text('Item 0')
          Button('Item 1')
          Button('Item 2')
        }
  }

  onChange12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit3(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
