.class public Lc3/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc3/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lc3/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc3/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc3/f;-><init>(Lc3/g;)V

    sput-object v0, Lc3/f$a;->a:Lc3/f;

    return-void
.end method

.method public static bridge synthetic a()Lc3/f;
    .locals 1

    sget-object v0, Lc3/f$a;->a:Lc3/f;

    return-object v0
.end method
