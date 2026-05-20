
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';
import { CustomerCard } from 'common/CustomerCard';
import { Logger } from 'utils/Logger';
import { CartModel } from 'models/CartModel';
import { OrderModel } from 'models/OrderModel';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { CustomerButton } from 'common/CustomerButton';
import { @ohos.router } from '@ohos.router';

@Link
@Component
export struct ComponentManager748 {
  @State mAge11: string = 'value19';
  @State mStatus1: UserModel[] = 55;
  @State mList50: string = 'value30';
  @State mStatus30: UserModel[] = 3;

  build() {
        Flex() {
          TextInput('Item 0')
          Text('Item 1')
        }
        Stack() {
          List('Item 0')
        }
        Stack() {
          TextInput('Item 0')
        }
        Column() {
          List('Item 0')
          Image('Item 1')
        }
        Row() {
          Button('Item 0')
          TextInput('Item 1')
        }
        Column() {
          Text('Item 0')
          TextInput('Item 1')
          Text('Item 2')
        }
        Flex() {
          TextInput('Item 0')
          List('Item 1')
          List('Item 2')
        }
        Flex() {
          Text('Item 0')
          TextInput('Item 1')
          TextInput('Item 2')
        }
        Stack() {
          List('Item 0')
          Text('Item 1')
        }
  }

  onChange3(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh17(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
