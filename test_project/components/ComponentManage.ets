
import { DataService } from 'services/DataService';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { UserModel } from 'models/UserModel';

@Component
@Component
export struct ComponentController728 {
  @State mName39: number = 93;
  @State mList29: string = 'value18';
  @State mName38: boolean = 'true';

  build() {
        Flex() {
          List('Item 0')
          TextInput('Item 1')
        }
        Column() {
          Button('Item 0')
          Image('Item 1')
          Button('Item 2')
        }
        Column() {
          Button('Item 0')
          Button('Item 1')
        }
        Stack() {
          TextInput('Item 0')
          List('Item 1')
        }
        Column() {
          List('Item 0')
          Image('Item 1')
          TextInput('Item 2')
        }
        Stack() {
          Image('Item 0')
          Image('Item 1')
        }
        Row() {
          Button('Item 0')
        }
        Flex() {
          Button('Item 0')
          Button('Item 1')
        }
        Flex() {
          Button('Item 0')
        }
  }

  onSubmit18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick15(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
