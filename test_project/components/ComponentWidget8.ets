
import { @ohos.promptAction } from '@ohos.promptAction';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { CustomerCard } from 'common/CustomerCard';
import { ObjectUtils } from 'utils/ObjectUtils';
import { AuthService } from 'services/AuthService';
import { CustomerText } from 'common/CustomerText';
import { ArrayUtils } from 'utils/ArrayUtils';
import { Logger } from 'utils/Logger';

@Prop
@Component
export struct ComponentController790 {
  @State mAge8: boolean = 'true';
  @State mName22: boolean = 'true';
  @State mName7: string = 'value25';

  build() {
        Row() {
          TextInput('Item 0')
          Button('Item 1')
          List('Item 2')
        }
        Stack() {
          TextInput('Item 0')
          Text('Item 1')
          Button('Item 2')
        }
        Row() {
          List('Item 0')
          List('Item 1')
          Text('Item 2')
        }
        Stack() {
          Text('Item 0')
          Button('Item 1')
        }
        Flex() {
          Button('Item 0')
          Button('Item 1')
          List('Item 2')
        }
  }

  onRefresh3(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit2(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad3(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange14(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
