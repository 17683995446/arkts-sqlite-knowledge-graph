
import { AuthService } from 'services/AuthService';
import { DataService } from 'services/DataService';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';

@Link
@Component
export struct ComponentView931 {
  @State mList24: number = 68;
  @State mStatus28: UserModel[] = 90;
  @State mCount35: number = 65;
  @State mAge24: number = 48;
  @State mName22: number = 82;

  build() {
        Row() {
          Text('Item 0')
          List('Item 1')
          Button('Item 2')
        }
        Column() {
          Text('Item 0')
          Image('Item 1')
        }
        Flex() {
          TextInput('Item 0')
        }
        Column() {
          Button('Item 0')
        }
        Column() {
          Image('Item 0')
        }
        Stack() {
          Image('Item 0')
          Image('Item 1')
        }
        Column() {
          List('Item 0')
          List('Item 1')
        }
        Column() {
          Text('Item 0')
          Text('Item 1')
          Image('Item 2')
        }
        Row() {
          TextInput('Item 0')
          Button('Item 1')
          List('Item 2')
        }
  }

  onChange20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick7(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
