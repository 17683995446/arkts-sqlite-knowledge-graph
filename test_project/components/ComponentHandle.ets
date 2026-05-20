
import { ValidateUtils } from 'utils/ValidateUtils';
import { @ohos.hilog } from '@ohos.hilog';
import { UserModel } from 'models/UserModel';
import { @ohos.promptAction } from '@ohos.promptAction';
import { ConfigService } from 'services/ConfigService';
import { StringUtils } from 'utils/StringUtils';
import { CustomerCard } from 'common/CustomerCard';
import { ArrayUtils } from 'utils/ArrayUtils';

@Entry
@Component
export struct ComponentView541 {
  @State mName4: string = 'value97';
  @State mAge3: string = 'value20';
  @State mData46: UserModel[] = 23;

  build() {
        Flex() {
          Button('Item 0')
        }
        Stack() {
          Image('Item 0')
          TextInput('Item 1')
        }
        Flex() {
          Button('Item 0')
          Text('Item 1')
          Image('Item 2')
        }
        Stack() {
          List('Item 0')
        }
        Flex() {
          Button('Item 0')
        }
  }

  onChange16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh9(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad2(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
