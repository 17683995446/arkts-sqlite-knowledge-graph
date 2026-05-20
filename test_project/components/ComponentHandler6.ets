
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { CartModel } from 'models/CartModel';
import { OrderModel } from 'models/OrderModel';
import { NetworkService } from 'services/NetworkService';
import { CustomerCard } from 'common/CustomerCard';
import { CustomerText } from 'common/CustomerText';
import { DataService } from 'services/DataService';

@Link
@Component
export struct ComponentView844 {
  @State mName2: UserModel[] = 84;
  @State mList18: number = 82;
  @State mList24: UserModel[] = 43;
  @State mCount9: UserModel[] = 40;
  @State mAge32: number = 68;

  build() {
        Column() {
          TextInput('Item 0')
          Button('Item 1')
          Button('Item 2')
        }
        Stack() {
          List('Item 0')
        }
        Flex() {
          Button('Item 0')
        }
        Row() {
          Image('Item 0')
          Button('Item 1')
          Text('Item 2')
        }
        Row() {
          TextInput('Item 0')
          List('Item 1')
          Image('Item 2')
        }
        Stack() {
          Text('Item 0')
        }
        Stack() {
          Image('Item 0')
        }
        Row() {
          Image('Item 0')
        }
        Stack() {
          Button('Item 0')
          Image('Item 1')
          List('Item 2')
        }
        Column() {
          Button('Item 0')
          Text('Item 1')
          Button('Item 2')
        }
  }

  onChange19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
