
import { @ohos.hilog } from '@ohos.hilog';
import { UserModel } from 'models/UserModel';
import { @system.router } from '@system.router';

@Entry
@Component
export struct ComponentManager904 {
  @State mAge17: string = 'value4';
  @State mCount46: boolean = 'true';

  build() {
        Row() {
          Text('Item 0')
          List('Item 1')
          Text('Item 2')
        }
        Row() {
          Image('Item 0')
          Image('Item 1')
        }
        Stack() {
          TextInput('Item 0')
        }
        Row() {
          Text('Item 0')
        }
        Column() {
          Image('Item 0')
          List('Item 1')
          Image('Item 2')
        }
        Flex() {
          Button('Item 0')
        }
        Column() {
          Image('Item 0')
        }
  }

  onClick13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad9(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
