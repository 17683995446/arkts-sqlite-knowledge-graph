
import { Logger } from 'utils/Logger';
import { AuthService } from 'services/AuthService';
import { @ohos.hilog } from '@ohos.hilog';

@Component
@Component
export struct ComponentConsumer380 {
  @State mStatus33: UserModel[] = 37;
  @State mName2: number = 39;
  @State mAge18: boolean = 'true';
  @State mCount19: UserModel[] = 73;

  build() {
        Row() {
          List('Item 0')
          Button('Item 1')
        }
        Row() {
          TextInput('Item 0')
        }
        Stack() {
          Button('Item 0')
        }
        Column() {
          List('Item 0')
        }
        Row() {
          TextInput('Item 0')
          Text('Item 1')
          Text('Item 2')
        }
        Row() {
          Image('Item 0')
        }
        Flex() {
          Text('Item 0')
          Image('Item 1')
          TextInput('Item 2')
        }
  }

  onLoad5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit8(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick14(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick14(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
