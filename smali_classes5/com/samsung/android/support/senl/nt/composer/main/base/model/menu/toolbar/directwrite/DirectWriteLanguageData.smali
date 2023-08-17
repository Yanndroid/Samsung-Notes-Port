.class Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/DirectWriteLanguageData;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/AbsStoredData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/AbsStoredData<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_DIRECT_WRITE_RECOGNITION_LANGUAGE:Ljava/lang/String; = "KEY_DIRECT_WRITE_RECOGNITION_LANGUAGE"


# instance fields
.field private mIsLanguageMatched:Z

.field private mKeyboardLanguage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "KEY_DIRECT_WRITE_RECOGNITION_LANGUAGE"

    const-string v1, "not_selected_recognition_language"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/AbsStoredData;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/DirectWriteLanguageData;->mKeyboardLanguage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKeyboardLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/DirectWriteLanguageData;->mKeyboardLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public isLanguageMatched()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/DirectWriteLanguageData;->mIsLanguageMatched:Z

    return v0
.end method

.method public setKeyboardLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/DirectWriteLanguageData;->mKeyboardLanguage:Ljava/lang/String;

    return-void
.end method

.method public setLanguageMatching(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/DirectWriteLanguageData;->mIsLanguageMatched:Z

    return-void
.end method
