.class public final synthetic Lf4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field public static final synthetic a:Lf4/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lf4/a;

    invoke-direct {v0}, Lf4/a;-><init>()V

    sput-object v0, Lf4/a;->a:Lf4/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_41_To_42;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
