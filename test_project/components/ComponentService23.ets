
import { ValidateUtils } from 'utils/ValidateUtils';
import { CustomerButton } from 'common/CustomerButton';
import { @ohos.storage } from '@ohos.storage';
import { UserModel } from 'models/UserModel';
import { DateUtils } from 'utils/DateUtils';

@Observed
@Component
export struct ComponentView310 {
  @State mList37: string = 'value71';
  @State mData10: string = 'value36';
  @State mAge28: UserModel[] = 91;
  @State mAge4: string = 'value27';

  build() {
        Row() {
          TextInput('Item 0')
          Button('Item 1')
        }
        Stack() {
          Image('Item 0')
          Button('Item 1')
          Button('Item 2')
        }
        Column() {
          Image('Item 0')
        }
        Row() {
          Button('Item 0')
          TextInput('Item 1')
          Image('Item 2')
        }
        Row() {
          Text('Item 0')
          Text('Item 1')
        }
  }

  onClick8(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit9(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange6(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit14(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
