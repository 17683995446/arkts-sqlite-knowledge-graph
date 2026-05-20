
import { @ohos.storage } from '@ohos.storage';
import { CustomerCard } from 'common/CustomerCard';
import { Logger } from 'utils/Logger';
import { ConfigService } from 'services/ConfigService';

@Observed
@Component
export struct ComponentManager25 {
  @State mStatus8: boolean = 'true';
  @State mList31: number = 74;
  @State mAge36: UserModel[] = 45;
  @State mList49: number = 11;

  build() {
        Column() {
          TextInput('Item 0')
          List('Item 1')
        }
        Stack() {
          TextInput('Item 0')
        }
        Flex() {
          Text('Item 0')
          Image('Item 1')
        }
        Column() {
          List('Item 0')
        }
  }

  onSubmit16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
