
import { @ohos.hilog } from '@ohos.hilog';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { @system.router } from '@system.router';
import { ObjectUtils } from 'utils/ObjectUtils';
import { UserModel } from 'models/UserModel';
import { CustomerButton } from 'common/CustomerButton';

@Preview
@Component
export struct ComponentConsumer182 {
  @State mAge5: UserModel[] = 64;
  @State mData15: boolean = 'true';
  @State mStatus14: boolean = 'true';
  @State mList36: UserModel[] = 14;
  @State mName48: UserModel[] = 12;

  build() {
        Stack() {
          List('Item 0')
          Image('Item 1')
        }
        Column() {
          TextInput('Item 0')
        }
        Column() {
          Text('Item 0')
          Text('Item 1')
        }
        Row() {
          List('Item 0')
        }
        Column() {
          Image('Item 0')
          Image('Item 1')
        }
        Column() {
          List('Item 0')
          Text('Item 1')
        }
        Stack() {
          Button('Item 0')
          Text('Item 1')
          TextInput('Item 2')
        }
  }

  onLoad15(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick8(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange17(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
