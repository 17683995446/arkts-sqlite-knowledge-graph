
import { CustomerCard } from 'common/CustomerCard';
import { CustomerText } from 'common/CustomerText';
import { ValidateUtils } from 'utils/ValidateUtils';
import { @ohos.storage } from '@ohos.storage';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { ArrayUtils } from 'utils/ArrayUtils';
import { @ohos.hilog } from '@ohos.hilog';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';

@Entry
@Component
export struct ComponentView676 {
  @State mName35: number = 71;
  @State mName48: boolean = 'true';

  build() {
        Row() {
          List('Item 0')
        }
        Stack() {
          Button('Item 0')
          List('Item 1')
        }
        Stack() {
          Button('Item 0')
          Text('Item 1')
        }
  }

  onRefresh3(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick7(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
