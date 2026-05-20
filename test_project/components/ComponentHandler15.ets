
import { DateUtils } from 'utils/DateUtils';
import { @ohos.promptAction } from '@ohos.promptAction';
import { CustomerCard } from 'common/CustomerCard';
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { AuthService } from 'services/AuthService';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';

@Observed
@Component
export struct ComponentView307 {
  @State mCount33: boolean = 'true';
  @State mData30: UserModel[] = 97;
  @State mAge37: string = 'value43';
  @State mAge35: boolean = 'true';
  @State mList26: UserModel[] = 22;
  @State mAge30: boolean = 'true';

  build() {
        Column() {
          Image('Item 0')
          Button('Item 1')
        }
        Flex() {
          Text('Item 0')
        }
        Flex() {
          Image('Item 0')
          Button('Item 1')
          List('Item 2')
        }
        Flex() {
          Button('Item 0')
        }
        Row() {
          Button('Item 0')
        }
  }

  onSubmit7(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
