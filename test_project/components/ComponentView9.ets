
import { ObjectUtils } from 'utils/ObjectUtils';
import { DataService } from 'services/DataService';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { CustomerCard } from 'common/CustomerCard';
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';
import { CartModel } from 'models/CartModel';
import { ProductModel } from 'models/ProductModel';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';

@StorageLink
@Component
export struct ComponentManager621 {
  @State mAge44: boolean = 'true';
  @State mList1: boolean = 'true';
  @State mList40: boolean = 'true';
  @State mStatus49: UserModel[] = 31;
  @State mName43: boolean = 'true';
  @State mStatus41: number = 46;

  build() {
        Flex() {
          Image('Item 0')
        }
        Flex() {
          Image('Item 0')
          List('Item 1')
        }
        Row() {
          Image('Item 0')
        }
        Column() {
          Text('Item 0')
          Button('Item 1')
          Button('Item 2')
        }
        Stack() {
          TextInput('Item 0')
          Image('Item 1')
        }
  }

  onClick6(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad9(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
