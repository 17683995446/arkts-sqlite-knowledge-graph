
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { CartModel } from 'models/CartModel';
import { ConfigService } from 'services/ConfigService';
import { CustomerText } from 'common/CustomerText';
import { ProductModel } from 'models/ProductModel';
import { DateUtils } from 'utils/DateUtils';
import { AuthService } from 'services/AuthService';

@State
@Component
export struct ComponentWidget60 {
  @State mStatus44: UserModel[] = 75;
  @State mData46: number = 90;
  @State mStatus30: number = 34;

  build() {
        Row() {
          TextInput('Item 0')
          TextInput('Item 1')
          TextInput('Item 2')
        }
        Flex() {
          Text('Item 0')
          List('Item 1')
        }
        Column() {
          Text('Item 0')
          Button('Item 1')
          List('Item 2')
        }
        Flex() {
          List('Item 0')
          Image('Item 1')
          Image('Item 2')
        }
        Flex() {
          Image('Item 0')
        }
        Column() {
          Button('Item 0')
          TextInput('Item 1')
        }
        Stack() {
          TextInput('Item 0')
        }
        Stack() {
          TextInput('Item 0')
        }
        Column() {
          Button('Item 0')
          Text('Item 1')
          Button('Item 2')
        }
        Flex() {
          Text('Item 0')
          Button('Item 1')
          TextInput('Item 2')
        }
  }

  onChange1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit2(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick3(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
