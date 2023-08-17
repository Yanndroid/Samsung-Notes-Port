.class public final synthetic Le3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le3/d;->a:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Le3/d;->a:I

    check-cast p1, [I

    invoke-static {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/classifier/TextClassifierExtraUtils;->k(I[I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
