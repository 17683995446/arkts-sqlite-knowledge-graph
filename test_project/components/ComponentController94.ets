
import { ArrayUtils } from 'utils/ArrayUtils';
import { CustomerCard } from 'common/CustomerCard';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';

@Entry
@Component
export struct ComponentController967 {
  @State mStatus21: number = 15;
  @State mAge27: string = 'value38';
  @State mAge48: UserModel[] = 8;
  @State mAge25: UserModel[] = 83;

  build() {
        Column() {
          TextInput('Item 0')
          Button('Item 1')
          Image('Item 2')
        }
        Stack() {
          Text('Item 0')
          TextInput('Item 1')
        }
        Stack() {
          List('Item 0')
        }
        Column() {
          Text('Item 0')
          Text('Item 1')
          List('Item 2')
        }
        Stack() {
          Text('Item 0')
        }
        Column() {
          TextInput('Item 0')
          Image('Item 1')
          Text('Item 2')
        }
        Row() {
          Text('Item 0')
        }
        Row() {
          List('Item 0')
          TextInput('Item 1')
        }
        Flex() {
          TextInput('Item 0')
        }
  }

  onRefresh15(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick2(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
