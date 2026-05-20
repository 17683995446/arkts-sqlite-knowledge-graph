
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { CustomerCard } from 'common/CustomerCard';
import { AuthService } from 'services/AuthService';

@Component
@Component
export struct ComponentHelper57 {
  @State mList39: UserModel[] = 75;
  @State mName1: UserModel[] = 81;
  @State mCount37: number = 92;

  build() {
        Column() {
          Button('Item 0')
          List('Item 1')
        }
        Row() {
          Image('Item 0')
          List('Item 1')
        }
        Flex() {
          Text('Item 0')
          Text('Item 1')
          List('Item 2')
        }
        Row() {
          TextInput('Item 0')
          TextInput('Item 1')
          TextInput('Item 2')
        }
        Flex() {
          TextInput('Item 0')
          Button('Item 1')
          Image('Item 2')
        }
        Stack() {
          List('Item 0')
          Text('Item 1')
        }
        Row() {
          Button('Item 0')
          Button('Item 1')
        }
        Flex() {
          Text('Item 0')
          List('Item 1')
          List('Item 2')
        }
        Column() {
          Text('Item 0')
          Text('Item 1')
        }
        Row() {
          Text('Item 0')
        }
  }

  onClick6(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh7(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
