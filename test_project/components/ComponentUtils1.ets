
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';
import { CustomerButton } from 'common/CustomerButton';
import { DateUtils } from 'utils/DateUtils';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { AuthService } from 'services/AuthService';

@StorageLink
@Component
export struct ComponentView80 {
  @State mList12: number = 61;
  @State mAge19: number = 86;

  build() {
        Stack() {
          Image('Item 0')
          TextInput('Item 1')
          List('Item 2')
        }
        Column() {
          Button('Item 0')
          Text('Item 1')
          Button('Item 2')
        }
        Row() {
          List('Item 0')
        }
        Flex() {
          List('Item 0')
        }
        Flex() {
          Button('Item 0')
          TextInput('Item 1')
        }
        Flex() {
          List('Item 0')
          Text('Item 1')
        }
        Stack() {
          Button('Item 0')
          Image('Item 1')
          TextInput('Item 2')
        }
  }

  onSubmit18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit17(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
