
import { ConfigService } from 'services/ConfigService';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { Logger } from 'utils/Logger';
import { CartModel } from 'models/CartModel';
import { CustomerCard } from 'common/CustomerCard';

@Link
@Component
export struct ComponentView459 {
  @State mStatus26: string = 'value19';
  @State mName40: boolean = 'true';
  @State mAge17: UserModel[] = 56;
  @State mList47: string = 'value24';
  @State mData18: UserModel[] = 27;

  build() {
        Column() {
          TextInput('Item 0')
          Image('Item 1')
          Image('Item 2')
        }
        Stack() {
          Image('Item 0')
          List('Item 1')
          List('Item 2')
        }
        Row() {
          Image('Item 0')
        }
        Flex() {
          Image('Item 0')
        }
        Stack() {
          Button('Item 0')
          Text('Item 1')
        }
        Stack() {
          Image('Item 0')
        }
        Row() {
          Button('Item 0')
          Button('Item 1')
          Button('Item 2')
        }
  }

  onInit14(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad2(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
