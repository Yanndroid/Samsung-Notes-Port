.class public Lcom/samsung/android/support/senl/document/SDocCipher;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CIPHER_BUF_SIZE:I = 0x1000

.field public static final CIPHER_INTERATION_COUNT:I = 0xfa0

.field public static final CIPHER_KEY_BIT_LENGTH:I = 0x100


# instance fields
.field public mPassword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/SDocCipher;->mPassword:Ljava/lang/String;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/document/SDocLocker;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/document/SDocLocker;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/SDocLocker;->getUserCode()[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/SDocCipher;->mPassword:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "SDocCipher() - context can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
