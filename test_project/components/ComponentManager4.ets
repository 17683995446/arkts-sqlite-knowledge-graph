
import { @ohos.hilog } from '@ohos.hilog';
import { CartModel } from 'models/CartModel';
import { DataService } from 'services/DataService';
import { CustomerCard } from 'common/CustomerCard';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { NetworkService } from 'services/NetworkService';

@StorageLink
@Component
export struct ComponentController152 {
  @State mData5: string = 'value61';
  @State mName5: number = 39;
  @State mData29: boolean = 'true';
  @State mData45: boolean = 'true';

  build() {
        Stack() {
          TextInput('Item 0')
        }
        Row() {
          Button('Item 0')
        }
        Row() {
          Text('Item 0')
          Text('Item 1')
          Image('Item 2')
        }
        Column() {
          TextInput('Item 0')
          Image('Item 1')
        }
        Stack() {
          Image('Item 0')
        }
        Flex() {
          TextInput('Item 0')
          List('Item 1')
          List('Item 2')
        }
        Column() {
          Button('Item 0')
        }
  }

  onSubmit7(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh3(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit15(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad14(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange8(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
