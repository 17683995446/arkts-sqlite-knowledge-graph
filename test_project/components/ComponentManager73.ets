
import { @system.router } from '@system.router';
import { @ohos.promptAction } from '@ohos.promptAction';
import { AuthService } from 'services/AuthService';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { NetworkService } from 'services/NetworkService';
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';

@Component
@Component
export struct ComponentHandler369 {
  @State mData30: boolean = 'true';
  @State mAge17: string = 'value44';
  @State mData24: UserModel[] = 20;
  @State mData49: string = 'value79';

  build() {
        Column() {
          Image('Item 0')
          Button('Item 1')
        }
        Stack() {
          Image('Item 0')
        }
        Stack() {
          Button('Item 0')
        }
        Row() {
          Text('Item 0')
        }
        Row() {
          Text('Item 0')
          TextInput('Item 1')
        }
        Flex() {
          Button('Item 0')
          List('Item 1')
        }
        Flex() {
          List('Item 0')
        }
  }

  onRefresh13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit6(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange17(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
