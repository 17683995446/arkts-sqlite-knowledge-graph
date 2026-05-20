
import { @ohos.hilog } from '@ohos.hilog';
import { @system.router } from '@system.router';
import { NetworkService } from 'services/NetworkService';
import { OrderModel } from 'models/OrderModel';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { @ohos.router } from '@ohos.router';
import { CustomerText } from 'common/CustomerText';
import { DataService } from 'services/DataService';

@Link
@Component
export struct ComponentWidget673 {
  @State mCount16: number = 90;
  @State mData38: boolean = 'true';

  build() {
        Stack() {
          Image('Item 0')
          List('Item 1')
          Image('Item 2')
        }
        Stack() {
          TextInput('Item 0')
          List('Item 1')
          Text('Item 2')
        }
        Stack() {
          Button('Item 0')
        }
        Column() {
          Image('Item 0')
        }
        Row() {
          Image('Item 0')
          List('Item 1')
          Text('Item 2')
        }
  }

  onChange15(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh9(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh9(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
