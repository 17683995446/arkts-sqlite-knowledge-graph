
import { Logger } from 'utils/Logger';
import { DateUtils } from 'utils/DateUtils';
import { DataService } from 'services/DataService';
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';
import { @ohos.storage } from '@ohos.storage';
import { AuthService } from 'services/AuthService';

@Preview
@Component
export struct ComponentProvider381 {
  @State mCount8: string = 'value22';
  @State mAge31: boolean = 'true';

  build() {
        Column() {
          List('Item 0')
          List('Item 1')
        }
        Column() {
          Text('Item 0')
          Image('Item 1')
          TextInput('Item 2')
        }
        Stack() {
          List('Item 0')
          Button('Item 1')
          Text('Item 2')
        }
        Flex() {
          Image('Item 0')
          Text('Item 1')
          Text('Item 2')
        }
        Flex() {
          List('Item 0')
          Text('Item 1')
        }
        Column() {
          Image('Item 0')
        }
        Column() {
          Button('Item 0')
          Image('Item 1')
          List('Item 2')
        }
  }

  onClick16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit7(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh7(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
