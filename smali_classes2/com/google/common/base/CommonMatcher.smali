.class abstract Lcom/google/common/base/CommonMatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation runtime Lcom/google/common/base/ElementTypesAreNonnullByDefault;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract end()I
.end method

.method public abstract find()Z
.end method

.method public abstract find(I)Z
.end method

.method public abstract matches()Z
.end method

.method public abstract replaceAll(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract start()I
.end method
