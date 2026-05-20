
import { @ohos.promptAction } from '@ohos.promptAction';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { AuthService } from 'services/AuthService';
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';
import { @ohos.hilog } from '@ohos.hilog';
import { DateUtils } from 'utils/DateUtils';
import { UserModel } from 'models/UserModel';

@StorageProp
@Component
export struct ComponentService538 {
  @State mList14: UserModel[] = 30;
  @State mStatus6: number = 50;
  @State mData44: string = 'value53';
  @State mAge33: boolean = 'true';
  @State mList30: boolean = 'true';
  @State mStatus33: number = 79;

  build() {
        Stack() {
          Button('Item 0')
        }
        Flex() {
          Text('Item 0')
          TextInput('Item 1')
        }
        Column() {
          List('Item 0')
        }
  }

  onChange15(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick3(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit14(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
