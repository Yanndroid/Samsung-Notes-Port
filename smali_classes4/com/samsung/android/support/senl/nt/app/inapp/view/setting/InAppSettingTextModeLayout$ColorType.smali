.class final enum Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$ColorType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ColorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$ColorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$ColorType;

.field public static final enum TEXT:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$ColorType;

.field public static final enum TEXTBG:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$ColorType;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$ColorType;

    const-string v1, "TEXT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$ColorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$ColorType;->TEXT:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$ColorType;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$ColorType;

    const-string v3, "TEXTBG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$ColorType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$ColorType;->TEXTBG:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$ColorType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$ColorType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$ColorType;->$VALUES:[Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$ColorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$ColorType;
    .locals 1

    const-class v0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$ColorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$ColorType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$ColorType;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$ColorType;->$VALUES:[Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$ColorType;

    invoke-virtual {v0}, [Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$ColorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$ColorType;

    return-object v0
.end method
