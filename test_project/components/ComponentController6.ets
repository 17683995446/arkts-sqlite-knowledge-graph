
import { @ohos.promptAction } from '@ohos.promptAction';
import { AuthService } from 'services/AuthService';
import { Logger } from 'utils/Logger';
import { ConfigService } from 'services/ConfigService';
import { @ohos.storage } from '@ohos.storage';
import { CustomerCard } from 'common/CustomerCard';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { NetworkService } from 'services/NetworkService';

@Link
@Component
export struct ComponentWidget476 {
  @State mCount9: boolean = 'true';
  @State mList4: number = 88;
  @State mList39: boolean = 'true';

  build() {
        Flex() {
          Text('Item 0')
          Button('Item 1')
          Text('Item 2')
        }
        Column() {
          List('Item 0')
          Text('Item 1')
        }
        Row() {
          Button('Item 0')
          Image('Item 1')
          Text('Item 2')
        }
        Stack() {
          Image('Item 0')
          Text('Item 1')
          Image('Item 2')
        }
        Row() {
          Image('Item 0')
          Text('Item 1')
        }
  }

  onLoad15(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh6(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad9(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit7(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
