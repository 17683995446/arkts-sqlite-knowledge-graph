
import { CustomerText } from 'common/CustomerText';
import { CustomerCard } from 'common/CustomerCard';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';
import { AuthService } from 'services/AuthService';
import { CartModel } from 'models/CartModel';
import { NetworkService } from 'services/NetworkService';
import { ArrayUtils } from 'utils/ArrayUtils';

@Observed
@Component
export struct ComponentConsumer677 {
  @State mAge24: boolean = 'true';
  @State mList6: boolean = 'true';

  build() {
        Flex() {
          TextInput('Item 0')
        }
        Stack() {
          TextInput('Item 0')
        }
        Row() {
          TextInput('Item 0')
        }
        Stack() {
          Text('Item 0')
        }
        Flex() {
          Image('Item 0')
          List('Item 1')
          List('Item 2')
        }
        Column() {
          Image('Item 0')
          Text('Item 1')
        }
        Column() {
          Button('Item 0')
          Image('Item 1')
          Text('Item 2')
        }
        Flex() {
          Image('Item 0')
          Button('Item 1')
          TextInput('Item 2')
        }
  }

  onRefresh14(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange8(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick2(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit17(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
