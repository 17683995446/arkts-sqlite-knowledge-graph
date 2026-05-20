
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { ConfigService } from 'services/ConfigService';
import { @ohos.promptAction } from '@ohos.promptAction';
import { DataService } from 'services/DataService';
import { @ohos.storage } from '@ohos.storage';
import { CustomerButton } from 'common/CustomerButton';

@StorageProp
@Component
export struct ComponentWidget34 {
  @State mName23: UserModel[] = 70;
  @State mStatus5: boolean = 'true';
  @State mCount1: string = 'value43';
  @State mName32: UserModel[] = 8;

  build() {
        Row() {
          Text('Item 0')
          Text('Item 1')
        }
        Flex() {
          Image('Item 0')
          Button('Item 1')
          Text('Item 2')
        }
        Flex() {
          Image('Item 0')
        }
        Row() {
          Text('Item 0')
          Text('Item 1')
          TextInput('Item 2')
        }
        Stack() {
          Button('Item 0')
          Text('Item 1')
          Image('Item 2')
        }
        Stack() {
          TextInput('Item 0')
        }
        Column() {
          TextInput('Item 0')
          List('Item 1')
          TextInput('Item 2')
        }
        Column() {
          Image('Item 0')
        }
  }

  onSubmit14(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh7(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
