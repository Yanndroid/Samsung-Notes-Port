.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardMicrosoftAccountLogin;
.super Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 7

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->tipcard_microsoft_account_login_title:I

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->tipcard_microsoft_account_login_body:I

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$string;->tipcard_microsoft_account_login_positive:I

    const/high16 v1, 0x800000

    const/4 v5, 0x0

    const/4 v6, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;-><init>(IIIIII)V

    return-void
.end method
