
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { @ohos.storage } from '@ohos.storage';
import { OrderModel } from 'models/OrderModel';
import { ArrayUtils } from 'utils/ArrayUtils';
import { AuthService } from 'services/AuthService';
import { @ohos.hilog } from '@ohos.hilog';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';

@Link
@Component
export struct ComponentService286 {
  @State mName6: number = 4;
  @State mStatus9: string = 'value98';
  @State mAge30: UserModel[] = 8;

  build() {
        Row() {
          TextInput('Item 0')
        }
        Column() {
          Button('Item 0')
        }
        Flex() {
          TextInput('Item 0')
          Text('Item 1')
          Image('Item 2')
        }
  }

  onSubmit20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick14(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
