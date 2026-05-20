
import { ObjectUtils } from 'utils/ObjectUtils';
import { OrderModel } from 'models/OrderModel';
import { CustomerCard } from 'common/CustomerCard';
import { StringUtils } from 'utils/StringUtils';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';

@StorageProp
@Component
export struct ComponentView378 {
  @State mCount29: string = 'value86';
  @State mCount8: string = 'value77';

  build() {
        Row() {
          Image('Item 0')
        }
        Flex() {
          Button('Item 0')
          Text('Item 1')
          List('Item 2')
        }
        Stack() {
          Button('Item 0')
          TextInput('Item 1')
        }
        Flex() {
          Image('Item 0')
          TextInput('Item 1')
          List('Item 2')
        }
        Stack() {
          Image('Item 0')
          TextInput('Item 1')
          Image('Item 2')
        }
        Stack() {
          Text('Item 0')
          TextInput('Item 1')
        }
        Flex() {
          Button('Item 0')
          Button('Item 1')
        }
        Row() {
          Button('Item 0')
        }
        Stack() {
          Button('Item 0')
          Text('Item 1')
        }
  }

  onLoad9(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick17(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
