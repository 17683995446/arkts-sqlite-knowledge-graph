
import { CartModel } from 'models/CartModel';
import { @ohos.promptAction } from '@ohos.promptAction';
import { @system.router } from '@system.router';
import { OrderModel } from 'models/OrderModel';
import { CustomerText } from 'common/CustomerText';

@Observed
@Component
export struct ComponentConsumer934 {
  @State mCount21: number = 31;
  @State mName26: string = 'value77';
  @State mList19: number = 40;
  @State mData42: number = 63;
  @State mName33: string = 'value5';

  build() {
        Stack() {
          TextInput('Item 0')
          Image('Item 1')
          Text('Item 2')
        }
        Stack() {
          Image('Item 0')
          List('Item 1')
          List('Item 2')
        }
        Flex() {
          Image('Item 0')
          Image('Item 1')
        }
        Stack() {
          List('Item 0')
        }
        Column() {
          List('Item 0')
          Text('Item 1')
        }
        Stack() {
          Text('Item 0')
          TextInput('Item 1')
        }
        Stack() {
          List('Item 0')
        }
        Stack() {
          Text('Item 0')
          Button('Item 1')
          Text('Item 2')
        }
  }

  onLoad18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad7(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh2(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange15(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
