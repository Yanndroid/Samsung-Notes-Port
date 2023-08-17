.class public final Luk/ac/ed/ph/snuggletex/internal/SnuggleParseException;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x4028344586a69ed0L


# instance fields
.field private final error:Luk/ac/ed/ph/snuggletex/InputError;


# direct methods
.method public constructor <init>(Luk/ac/ed/ph/snuggletex/InputError;)V
    .locals 1

    invoke-static {p1}, Luk/ac/ed/ph/snuggletex/utilities/MessageFormatter;->formatErrorAsString(Luk/ac/ed/ph/snuggletex/InputError;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/SnuggleParseException;->error:Luk/ac/ed/ph/snuggletex/InputError;

    return-void
.end method


# virtual methods
.method public getError()Luk/ac/ed/ph/snuggletex/InputError;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/SnuggleParseException;->error:Luk/ac/ed/ph/snuggletex/InputError;

    return-object v0
.end method
