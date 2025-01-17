// SPDX-License-Identifier: Apache-2.0
//
//  The OpenSearch Contributors require contributions made to
//  this file be licensed under the Apache-2.0 license or a
//  compatible open source license.

$version: "2"
namespace OpenSearch

structure DeleteIndexInput with [ClusterManagerTimeout] {
    @httpLabel
    @required
    index: IndexName,

    @httpQuery("allow_no_indices")
    allow_no_indices: Boolean,

    @httpQuery("expand_wildcards")
    expand_wildcards: ExpandWildcards,

    @httpQuery("ignore_unavailable")
    ignore_unavailable: Boolean,

    @httpQuery("timeout")
    timeout: Time

}

structure DeleteIndexOutput {

    acknowledged:Boolean
}

apply DeleteIndex @examples([
    {
        title: "Examples for Delete Index Operation.",
        input: {
            index: "books"
        },
        output: {
            acknowledged: true
        }
    }
])
