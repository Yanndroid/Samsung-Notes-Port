.class public Lx/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/IConvertItem;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx/b;->a:Ljava/lang/String;

    iput p2, p0, Lx/b;->b:I

    return-void
.end method


# virtual methods
.method public getSrcPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lx/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getWritingMode()I
    .locals 1

    iget v0, p0, Lx/b;->b:I

    return v0
.end method

.method public isWrappingWhenLocked()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
