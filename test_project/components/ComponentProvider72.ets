
import { NetworkService } from 'services/NetworkService';
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { StringUtils } from 'utils/StringUtils';
import { @system.router } from '@system.router';

@Link
@Component
export struct ComponentView822 {
  @State mAge15: string = 'value73';
  @State mCount3: UserModel[] = 14;

  build() {
        Stack() {
          Image('Item 0')
          Image('Item 1')
          List('Item 2')
        }
        Flex() {
          Text('Item 0')
          List('Item 1')
          List('Item 2')
        }
        Column() {
          Image('Item 0')
          TextInput('Item 1')
        }
        Column() {
          Text('Item 0')
          Button('Item 1')
        }
  }

  onLoad1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit9(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange14(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
