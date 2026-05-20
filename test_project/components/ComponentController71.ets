
import { AuthService } from 'services/AuthService';
import { CustomerCard } from 'common/CustomerCard';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { ConfigService } from 'services/ConfigService';

@Link
@Component
export struct ComponentManager427 {
  @State mAge20: boolean = 'true';
  @State mName46: string = 'value37';

  build() {
        Row() {
          Image('Item 0')
        }
        Column() {
          Button('Item 0')
        }
        Row() {
          List('Item 0')
          Image('Item 1')
          TextInput('Item 2')
        }
        Row() {
          Text('Item 0')
          Image('Item 1')
          TextInput('Item 2')
        }
        Stack() {
          Image('Item 0')
        }
        Stack() {
          List('Item 0')
          Image('Item 1')
        }
        Row() {
          Image('Item 0')
          List('Item 1')
        }
        Flex() {
          Text('Item 0')
          Text('Item 1')
        }
        Stack() {
          Text('Item 0')
        }
        Column() {
          List('Item 0')
          Button('Item 1')
          List('Item 2')
        }
  }

  onSubmit4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit15(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick3(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad8(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
