
import { NetworkService } from 'services/NetworkService';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { @ohos.promptAction } from '@ohos.promptAction';
import { CustomerButton } from 'common/CustomerButton';

@Link
@Component
export struct ComponentUtils511 {
  @State mAge17: boolean = 'true';
  @State mData43: number = 80;
  @State mName33: number = 29;
  @State mName47: number = 20;
  @State mName46: number = 92;

  build() {
        Column() {
          TextInput('Item 0')
        }
        Row() {
          TextInput('Item 0')
          List('Item 1')
        }
        Column() {
          List('Item 0')
          TextInput('Item 1')
          TextInput('Item 2')
        }
        Flex() {
          Text('Item 0')
        }
        Stack() {
          List('Item 0')
          Text('Item 1')
          TextInput('Item 2')
        }
        Stack() {
          Button('Item 0')
        }
        Flex() {
          List('Item 0')
        }
        Flex() {
          Button('Item 0')
        }
  }

  onChange8(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad9(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
