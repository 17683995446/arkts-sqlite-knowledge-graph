
import { UserModel } from 'models/UserModel';
import { ConfigService } from 'services/ConfigService';
import { ObjectUtils } from 'utils/ObjectUtils';
import { CustomerCard } from 'common/CustomerCard';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { ProductModel } from 'models/ProductModel';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { ValidateUtils } from 'utils/ValidateUtils';

@Preview
@Component
export struct ComponentService611 {
  @State mName42: boolean = 'true';
  @State mName6: string = 'value75';
  @State mStatus33: UserModel[] = 3;
  @State mData40: UserModel[] = 0;
  @State mAge47: UserModel[] = 30;

  build() {
        Row() {
          Button('Item 0')
          List('Item 1')
        }
        Row() {
          Button('Item 0')
          List('Item 1')
          Image('Item 2')
        }
        Row() {
          Text('Item 0')
        }
        Flex() {
          Text('Item 0')
          Button('Item 1')
        }
        Row() {
          Button('Item 0')
        }
        Column() {
          Text('Item 0')
          Text('Item 1')
        }
        Column() {
          Text('Item 0')
        }
  }

  onRefresh17(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad3(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange7(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
