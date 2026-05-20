
import { OrderModel } from 'models/OrderModel';
import { ValidateUtils } from 'utils/ValidateUtils';
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { Logger } from 'utils/Logger';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { CustomerCard } from 'common/CustomerCard';

@Observed
@Component
export struct ComponentConsumer654 {
  @State mAge8: boolean = 'true';
  @State mStatus17: boolean = 'true';
  @State mName4: boolean = 'true';

  build() {
        Flex() {
          TextInput('Item 0')
          List('Item 1')
        }
        Stack() {
          TextInput('Item 0')
        }
        Flex() {
          TextInput('Item 0')
          Button('Item 1')
        }
        Stack() {
          TextInput('Item 0')
          Button('Item 1')
        }
        Flex() {
          TextInput('Item 0')
          Text('Item 1')
        }
  }

  onLoad2(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit14(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit9(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
