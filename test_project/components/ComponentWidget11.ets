
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { DateUtils } from 'utils/DateUtils';
import { ValidateUtils } from 'utils/ValidateUtils';
import { @ohos.hilog } from '@ohos.hilog';
import { Logger } from 'utils/Logger';

@Link
@Component
export struct ComponentHelper975 {
  @State mName18: number = 26;
  @State mStatus14: number = 70;

  build() {
        Flex() {
          Text('Item 0')
          Text('Item 1')
          Text('Item 2')
        }
        Row() {
          Text('Item 0')
        }
        Flex() {
          Image('Item 0')
          TextInput('Item 1')
          List('Item 2')
        }
        Row() {
          Button('Item 0')
          Image('Item 1')
        }
        Flex() {
          Button('Item 0')
        }
        Stack() {
          TextInput('Item 0')
        }
        Stack() {
          List('Item 0')
        }
        Flex() {
          List('Item 0')
          Text('Item 1')
          Button('Item 2')
        }
  }

  onSubmit19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
