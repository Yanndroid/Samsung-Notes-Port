.class public Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil$SubText;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubText"
.end annotation


# static fields
.field public static final TYPE_TEXT:I = 0x1

.field public static final TYPE_URL:I = 0x2


# instance fields
.field private data:Ljava/lang/CharSequence;

.field private type:I


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil$SubText;->type:I

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil$SubText;->data:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil$SubText;->data:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil$SubText;->type:I

    return v0
.end method
