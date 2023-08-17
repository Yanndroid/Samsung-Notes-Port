.class public abstract Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyKey;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mKeyword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyKey;->mKeyword:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKeyword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyKey;->mKeyword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyKey;->mKeyword:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public abstract getType()I
.end method
