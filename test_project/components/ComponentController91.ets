
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { Logger } from 'utils/Logger';
import { CustomerCard } from 'common/CustomerCard';
import { CustomerButton } from 'common/CustomerButton';
import { ProductModel } from 'models/ProductModel';
import { CustomerText } from 'common/CustomerText';

@Prop
@Component
export struct ComponentHelper72 {
  @State mData16: boolean = 'true';
  @State mData44: UserModel[] = 72;
  @State mName45: UserModel[] = 37;
  @State mName16: string = 'value66';
  @State mCount50: number = 34;
  @State mList11: UserModel[] = 4;

  build() {
        Column() {
          TextInput('Item 0')
          Text('Item 1')
          Button('Item 2')
        }
        Flex() {
          Image('Item 0')
          List('Item 1')
        }
        Stack() {
          TextInput('Item 0')
          TextInput('Item 1')
        }
  }

  onChange1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange15(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad7(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
