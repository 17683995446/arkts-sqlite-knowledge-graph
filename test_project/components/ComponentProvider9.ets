
import { DataService } from 'services/DataService';
import { ValidateUtils } from 'utils/ValidateUtils';
import { @ohos.promptAction } from '@ohos.promptAction';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { @ohos.hilog } from '@ohos.hilog';
import { CustomerCard } from 'common/CustomerCard';
import { NetworkService } from 'services/NetworkService';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';

@State
@Component
export struct ComponentConsumer494 {
  @State mAge12: string = 'value57';
  @State mCount34: boolean = 'true';

  build() {
        Stack() {
          Image('Item 0')
        }
        Flex() {
          List('Item 0')
        }
        Stack() {
          Text('Item 0')
        }
        Stack() {
          Text('Item 0')
        }
        Flex() {
          Text('Item 0')
          Text('Item 1')
          List('Item 2')
        }
        Flex() {
          TextInput('Item 0')
        }
  }

  onLoad8(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit8(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange3(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
