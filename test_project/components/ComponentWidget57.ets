
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { CustomerButton } from 'common/CustomerButton';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { @ohos.promptAction } from '@ohos.promptAction';

@Entry
@Component
export struct ComponentConsumer488 {
  @State mName28: number = 46;
  @State mStatus46: string = 'value2';
  @State mAge36: UserModel[] = 23;
  @State mAge44: number = 31;
  @State mStatus40: boolean = 'true';
  @State mAge7: boolean = 'true';

  build() {
        Row() {
          List('Item 0')
          Text('Item 1')
        }
        Stack() {
          Text('Item 0')
          Text('Item 1')
          List('Item 2')
        }
        Stack() {
          TextInput('Item 0')
          List('Item 1')
          Image('Item 2')
        }
        Stack() {
          List('Item 0')
        }
  }

  onSubmit15(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick7(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange17(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange9(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange15(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
