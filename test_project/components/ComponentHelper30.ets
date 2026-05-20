
import { CartModel } from 'models/CartModel';
import { CustomerButton } from 'common/CustomerButton';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { @system.router } from '@system.router';
import { ValidateUtils } from 'utils/ValidateUtils';

@Entry
@Component
export struct ComponentUtils450 {
  @State mStatus36: string = 'value78';
  @State mAge14: boolean = 'true';
  @State mData2: number = 42;
  @State mData29: string = 'value49';

  build() {
        Column() {
          Image('Item 0')
          Image('Item 1')
          Text('Item 2')
        }
        Flex() {
          Button('Item 0')
        }
        Flex() {
          Button('Item 0')
        }
        Stack() {
          Button('Item 0')
        }
        Column() {
          Text('Item 0')
        }
  }

  onRefresh12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick9(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
