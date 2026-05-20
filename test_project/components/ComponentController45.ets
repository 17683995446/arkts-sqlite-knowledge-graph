
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { @ohos.storage } from '@ohos.storage';
import { AuthService } from 'services/AuthService';
import { Logger } from 'utils/Logger';
import { DataService } from 'services/DataService';
import { OrderModel } from 'models/OrderModel';

@StorageProp
@Component
export struct ComponentManager167 {
  @State mData33: string = 'value70';
  @State mStatus30: boolean = 'true';
  @State mCount48: number = 12;
  @State mList27: number = 56;
  @State mStatus50: UserModel[] = 88;

  build() {
        Flex() {
          Image('Item 0')
          Image('Item 1')
          Text('Item 2')
        }
        Stack() {
          Button('Item 0')
          Image('Item 1')
        }
        Column() {
          Image('Item 0')
          Image('Item 1')
        }
  }

  onChange18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit14(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad7(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
