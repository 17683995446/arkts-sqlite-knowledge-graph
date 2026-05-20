
import { @ohos.promptAction } from '@ohos.promptAction';
import { CustomerText } from 'common/CustomerText';
import { Logger } from 'utils/Logger';
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { CustomerButton } from 'common/CustomerButton';
import { CartModel } from 'models/CartModel';

@Component
@Component
export struct ComponentWidget492 {
  @State mCount18: string = 'value96';
  @State mStatus48: string = 'value91';
  @State mList18: number = 15;
  @State mList7: boolean = 'true';
  @State mList16: UserModel[] = 71;

  build() {
        Stack() {
          Text('Item 0')
          Image('Item 1')
        }
        Column() {
          List('Item 0')
        }
        Row() {
          Image('Item 0')
          TextInput('Item 1')
          TextInput('Item 2')
        }
        Column() {
          Text('Item 0')
        }
        Column() {
          TextInput('Item 0')
        }
        Stack() {
          TextInput('Item 0')
        }
  }

  onClick4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick15(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad2(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange6(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
