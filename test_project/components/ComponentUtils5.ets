
import { CustomerText } from 'common/CustomerText';
import { CustomerButton } from 'common/CustomerButton';
import { ProductModel } from 'models/ProductModel';
import { OrderModel } from 'models/OrderModel';
import { NetworkService } from 'services/NetworkService';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';

@Prop
@Component
export struct ComponentUtils748 {
  @State mStatus8: boolean = 'true';
  @State mList9: boolean = 'true';
  @State mList32: number = 98;
  @State mData3: UserModel[] = 22;
  @State mStatus17: number = 35;

  build() {
        Row() {
          Button('Item 0')
          Button('Item 1')
        }
        Flex() {
          Image('Item 0')
          Image('Item 1')
        }
        Column() {
          Image('Item 0')
          TextInput('Item 1')
        }
        Flex() {
          TextInput('Item 0')
          Image('Item 1')
        }
        Flex() {
          List('Item 0')
          Image('Item 1')
        }
        Column() {
          Button('Item 0')
        }
        Stack() {
          Text('Item 0')
          Text('Item 1')
        }
        Stack() {
          Image('Item 0')
          Button('Item 1')
        }
  }

  onSubmit20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit8(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad9(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
